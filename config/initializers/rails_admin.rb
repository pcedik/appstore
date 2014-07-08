RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    #export
    bulk_delete
    show
    edit do
      except 'Platform'
    end
    delete do
      except 'Platform'
    end

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
      field :alias 
    end
    edit do
      exclude_fields :platforms
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
      exclude_fields :aplikaces, :aplikacePlatforms
    end
  end

  config.model Version do
    object_label_method do
      :version
    end
    visible false
    edit do
      exclude_fields :aplikace_platform_id
    end
  end

  config.model AplikacePlatform do
    object_label_method do
      :platform_label_method
    end
    edit do
      exclude_fields :aplikace
    end
    visible false
  end

  config.model Preview do
    object_label_method do
      :foto_file_name
    end
    edit do
      exclude_fields :aplikace_platform_id
    end
    visible false
  end

  config.model Attachment do
    object_label_method do
      :file_file_name
    end
    edit do
      exclude_fields :version
    end
    visible false
  end


  def platform_label_method
    "Platforma #{Platform.find(self.platform_id).platform}"
  end

end
