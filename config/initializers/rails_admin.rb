RailsAdmin.config do |config|
  I18n.default_locale = :cs
  ### Popular gems integration

  ## == Devise ==
  #config.authenticate_with do
  #  warden.authenticate! scope: :admin
  #end
  #config.current_user_method &:current_admin
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method &:current_user

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['AplikacePlatform', 'Attachment', 'Preview', 'Version']
    end

    #export
    bulk_delete
    show
    edit 
    delete

    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.navigation_static_links = {
      'Google' => 'http://www.google.com'
  }


  config.model Aplikace do
    list do
      field :title
      field :alternativeName 
    end
    edit do
      exclude_fields :aplikacePlatforms
    end
    label "Seznam aplikací"
    label_plural "Seznam aplikací"
    show do
      exclude_fields :aplikacePlatforms
    end
  end

  config.model Platform do
    object_label_method do
      :platform
    end
    list do
      field :platform
    end
    edit do
      include_fields :platform, :logo
    end
    weight -10
    label "Platforma"
    label_plural "Platformy"
  end

  config.model Version do
    object_label_method do
      :version
    end
    list do
      field :aplikace_platform_id do
          formatted_value do
            aplikace_platform_label_method
          end
      end
      field :version
      field :stable
    end
    edit do
      exclude_fields :aplikace_platform_id
    end
    parent Aplikace
    label "Přehled verze"
    label_plural "Přehled verzí"
  end

  config.model AplikacePlatform do
    object_label_method do
      :platform_label_method
    end
    edit do
      configure :platform do
        read_only true
      end
      configure :aplikace do
        read_only true
      end
    end
    list do
      field :aplikace
      field :platform 
    end
    parent Aplikace
    label "Nastavení aplikací"
    label_plural "Nastavení aplikací"
    weight -10
  end

  config.model Preview do
    visible true
    parent Aplikace
    list do
      field :aplikace_platform_id do
        formatted_value do
          aplikace_platform_label_method
        end
      end
      field :foto
    end
    edit do
      configure :aplikace_platform_id do
        read_only true
      end
      field :aplikace_platform_id do
        formatted_value do
          aplikace_platform_label_method
        end
      end
      field :foto
    end
  end

  config.model Attachment do
    object_label_method do
      :file_file_name
    end
    edit do
      exclude_fields :version
    end
    visible true
    label "Instalační balík"
    label_plural "Instalační balíky"
    parent Aplikace
  end


  def platform_label_method
    "Platforma #{Platform.find(self.platform_id).platform}"
  end

  def aplikace_platform_label_method
    "#{AplikacePlatform.find(bindings[:object].aplikace_platform_id).platform.platform} - #{AplikacePlatform.find(bindings[:object].aplikace_platform_id).aplikace.title}"
  end

end
