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
      exclude_fields :aplikace, :platform
    end
    parent Aplikace
    label "Nastavení aplikací"
    label_plural "Nastavení aplikací"
    weight -10
  end

  config.model Preview do
    object_label_method do
      :foto_file_name
    end
    edit do
      exclude_fields :aplikace_platform_id
    end
    visible true
    parent Aplikace
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

end
