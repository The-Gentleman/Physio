[x] Use the Ruby on Rails framework.

[x] Your models must: Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

[x] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

[x] You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

[x] Your application must provide standard user authentication, including signup, login, logout, and passwords.

[x] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

[x] You must include and make use of a nested resource with the appropriate RESTful URLs. You must include a nested new route with form that relates to the parent resource You must include a nested index or show route

[x] Your forms should correctly display validation errors. a. Your fields should be enclosed within a fields_with_errors class b. Error messages describing the validation failures must be present within the view.

[x] Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app. Logic present in your controllers should be encapsulated as methods in your models. Your views should use helper methods and partials when appropriate. Follow patterns in the Rails Style Guide and the Ruby Style Guide.


-------------------------------------
Issue is that the patient is tethered to offices due to nested routes. Maybe a solution is to create an Exercise model that has a belongs to relationship with patient, then nest exercise under patient. That ensures that I can log a user in, ask for a location, then create a patient and assign an exercise irrespective of the office. So an exercise URL would look something like patient/id/exercise, and since a user has a has many relationship with a patient, I can use current_user.patients.exercise


-------------------------------------
NOTES ON SEARCH FUNCTION
In order to implement the search function, I did the following:
1- Added a new route
2- Added a new link in my nav bar
3- Wrote a new scope method in my patients controller
4- Added a new action in my patients controller, where I checked if the search query exists in the params,
to create an instance variable using the scope method.
5- In the appropriate view, I ran a check for the patient, iterated through the instance variable, checked
if that patient belonged to the current user, and if all the conditons were met, it returned the office the patient 
belonged to.