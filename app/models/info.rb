class Info < ApplicationRecord 
    has_many :my_model1s, dependent: :destroy
    validates :name, :password, presence: true
 
    before_validation :ensure_login_has_a_value
    before_save do

        puts "***************before save**********************"
    end

    before_destroy do
        puts "*******************before_destroy*********************"
    end

    after_destroy do
        puts "*******************after_destroy*********************"
    end

    after_save do

        puts "***************After Save******************"
    end

    # around_create do
    #     puts "***************Around Create*********************"
    # end

    

    before_create do

        puts "******************before create*******************"
        self.password = name.capitalize if password.blank?
      end
 
    private
      def ensure_login_has_a_value

        puts "****************before validation*******************"
        if password.nil?
            self.password = name unless name.blank?
          end
      
     end
end
