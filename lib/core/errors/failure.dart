abstract class Failure {}

class ServerFailure extends Failure {}



///I created types that inherit from it whenever I want, and at the same time, it doesn't cause issues when I pass it to the Either class.