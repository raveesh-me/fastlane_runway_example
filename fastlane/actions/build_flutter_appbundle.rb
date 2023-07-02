module Fastlane
  module Actions
    module SharedValues
      # BUILD_FLUTTER_APPBUNDLE_CUSTOM_VALUE = :BUILD_FLUTTER_APPBUNDLE_CUSTOM_VALUE
    end

    class BuildFlutterAppbundleAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        # UI.message "Parameter API Token: #{params[:api_token]}"

        sh "flutter build appbundle"

        # Actions.lane_context[SharedValues::BUILD_FLUTTER_APPBUNDLE_CUSTOM_VALUE] = "my_val"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        # TODO: - Eventually we will support all the parameters that flutter build appbundle can be configured with
        # But for now, we will stick to the basics
        "Invoke this action in the root of the flutter directory to build the appbundle"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "You can use this action to do cool things..."
      end

      def self.available_options
        # Define all options your action supports.
      end

      def self.output
        # # Define the shared values you are going to provide
        # # Example
        # [
        #   ['BUILD_FLUTTER_APPBUNDLE_CUSTOM_VALUE', 'A description of what this value contains']
        # ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["@raveesh_me"]
      end

      def self.is_supported?(platform)
        platform == :android
      end
    end
  end
end
