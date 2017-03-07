class Contact
  def initialize(inName)
    @name = inName
    @address = ""
    @location= ""
    @email = ""
    @telephone = ""
    @dob = ""
    @favourite = ""
  end #END initialize

  def name=(inName)
    @name = inName
  end #END name

  def address=(inAddress)
    @address = inAddress
  end #END address

  def location=(inLocation)
    @location = inLocation
  end #END location

  def email=(inEmail)
    @email = inEmail
  end #END email

  def telephone=(inTelephone)
    @telephone = inTelephone
  end #END telephone

  def dob=(inDob)
    @dob = inDob
  end #END dob

  def favourite=(inFavourite)
    @favourite = inFavourite
  end #END favourite

  def name
    @name
  end

  def address
    @address
  end

  def location
    @locatio
  end

  def email
    @email
  end

  def telephone
    @telephone
  end

  def dob
    @dob
  end

  def favourite
    @favourite
  end
end #END class
