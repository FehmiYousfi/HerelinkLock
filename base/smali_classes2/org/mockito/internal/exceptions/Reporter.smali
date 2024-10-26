.class public Lorg/mockito/internal/exceptions/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Lorg/mockito/invocation/Location;)Ljava/lang/AssertionError;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Argument(s) are different! Wanted:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 295
    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "Actual invocation has different arguments:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 p2, 0x6

    const-string v1, ""

    aput-object v1, v0, p2

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 304
    invoke-static {p2, p0, p1}, Lorg/mockito/internal/junit/ExceptionFactory;->createArgumentsAreDifferentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p0

    return-object p0
.end method

.method public static atMostAndNeverShouldNotBeUsedWithTimeout()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 646
    new-instance v0, Lorg/mockito/exceptions/misusing/FriendlyReminderException;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    const-string v4, "Don\'t panic! I\'m just a friendly reminder!"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "timeout() should not be used with atMost() or never() because..."

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "...it does not make much sense - the test would have passed immediately in concurency"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "We kept this method only to avoid compilation errors when upgrading Mockito."

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "In future release we will remove timeout(x).atMost(y) from the API."

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "If you want to find out more please refer to issue 235"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/FriendlyReminderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotCallAbstractRealMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 595
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot call abstract real method on java object!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Calling real methods is only possible when mocking non abstract method."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "  //correct example:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "  when(mockOfConcreteClass.nonAbstractMethod()).thenCallRealMethod();"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotCreateTimerWithNegativeDurationTime(J)Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 817
    new-instance v0, Lorg/mockito/exceptions/misusing/FriendlyReminderException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    const-string v4, "Don\'t panic! I\'m just a friendly reminder!"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "It is impossible for time to go backward, therefore..."

    aput-object v4, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot put negative value of duration: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    const-string p1, "as argument of timer methods (after(), timeout())"

    aput-object p1, v1, p0

    const/4 p0, 0x5

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/FriendlyReminderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 636
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate @InjectMocks field named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'! Cause: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const/4 p0, 0x1

    const-string p1, "You haven\'t provided the instance at field declaration so I tried to construct the instance."

    aput-object p1, v1, p0

    const/4 p0, 0x2

    const-string p1, "Examples of correct usage of @InjectMocks:"

    aput-object p1, v1, p0

    const/4 p0, 0x3

    const-string p1, "   @InjectMocks Service service = new Service();"

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, "   @InjectMocks Service service;"

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, "   //and... don\'t forget about some @Mocks for injection :)"

    aput-object p1, v1, p0

    const/4 p0, 0x6

    const-string p1, ""

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotInitializeForSpyAnnotation(Ljava/lang/String;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 625
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate a @Spy for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' field."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "You haven\'t provided the instance for spying at field declaration so I tried to construct the instance."

    aput-object v2, v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "However, I failed because: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 p0, 0x3

    const-string v2, "Examples of correct usage of @Spy:"

    aput-object v2, v1, p0

    const/4 p0, 0x4

    const-string v2, "   @Spy List mock = new LinkedList();"

    aput-object v2, v1, p0

    const/4 p0, 0x5

    const-string v2, "   @Spy Foo foo; //only if Foo has parameterless constructor"

    aput-object v2, v1, p0

    const/4 p0, 0x6

    const-string v2, "   //also, don\'t forget about MockitoAnnotations.initMocks();"

    aput-object v2, v1, p0

    const/4 p0, 0x7

    const-string v2, ""

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 680
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mockito couldn\'t inject mock dependency \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' on field "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whose type \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' was annotated by @InjectMocks in your test."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Also I failed because: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    const-string p1, ""

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static cannotMockClass(Ljava/lang/Class;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot mock/spy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "Mockito cannot mock/spy because :"

    aput-object v2, v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 447
    new-instance v0, Lorg/mockito/exceptions/misusing/CannotStubVoidMethodWithReturnValue;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is a *void method* and it *cannot* be stubbed with a *return value*!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "Voids are usually stubbed with Throwables:"

    aput-object v2, v1, p0

    const/4 p0, 0x2

    const-string v2, "    doThrow(exception).when(mock).someVoidMethod();"

    aput-object v2, v1, p0

    const/4 p0, 0x3

    const-string v2, "***"

    aput-object v2, v1, p0

    const/4 p0, 0x4

    const-string v2, "If you\'re unsure why you\'re getting above error read on."

    aput-object v2, v1, p0

    const/4 p0, 0x5

    const-string v2, "Due to the nature of the syntax above problem might occur because:"

    aput-object v2, v1, p0

    const/4 p0, 0x6

    const-string v2, "1. The method you are trying to stub is *overloaded*. Make sure you are calling the right overloaded version."

    aput-object v2, v1, p0

    const/4 p0, 0x7

    const-string v2, "2. Somewhere in your test you are stubbing *final methods*. Sorry, Mockito does not verify/stub final methods."

    aput-object v2, v1, p0

    const/16 p0, 0x8

    const-string v2, "3. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    aput-object v2, v1, p0

    const/16 p0, 0x9

    const-string v2, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    aput-object v2, v1, p0

    const/16 p0, 0xa

    const-string v2, "4. Mocking methods declared on non-public parent classes is not supported."

    aput-object v2, v1, p0

    const/16 p0, 0xb

    const-string v2, ""

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/CannotStubVoidMethodWithReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotStubWithNullThrowable()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 59
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot stub with null throwable!"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotVerifyToString()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 604
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Mockito cannot verify toString()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "toString() is too often used behind of scenes  (i.e. during String concatenation, in IDE debugging views). Verifying it may give inconsistent or hard to understand results. Not to mention that verifying toString() most likely hints awkward design (hard to explain in a short exception message. Trust me...)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "However, it is possible to stub toString(). Stubbing toString() smells a bit funny but there are rare, legitimate use cases."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static checkedExceptionInvalid(Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 52
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Checked exception is invalid for this method!"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;
    .locals 5

    const-string v0, "\n"

    if-eqz p2, :cond_0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedWantedCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getWantedCount()I

    move-result v2

    const-string v3, "."

    const-string v4, ":"

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p1

    const/4 p1, 0x2

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    aput-object v1, p2, p1

    const/4 p1, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "But was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedActualCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getActualCount()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, p1

    const/4 p0, 0x4

    aput-object v0, p2, p0

    invoke-static {p2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 360
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wanted "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v0, p2

    new-instance p0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 p2, 0x2

    aput-object p0, v0, p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "But was "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Undesired invocation:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const/4 p0, 0x4

    aput-object p3, v0, p0

    const/4 p0, 0x5

    const-string p1, ""

    aput-object p1, v0, p0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Wanted but not invoked:"

    aput-object v2, v0, v1

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    new-instance p0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string v1, ""

    aput-object v1, v0, p0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static defaultAnswerDoesNotAcceptNullParameter()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 777
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "defaultAnswer() does not accept null parameter"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 803
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Methods called on mock must exist in delegated instance."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When calling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " on mock: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    const-string p1, "no such method was found."

    aput-object p1, v1, p0

    const/4 p0, 0x3

    const-string p1, "Check that the instance passed to delegatesTo() is of the correct type or contains compatible methods"

    aput-object p1, v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(delegate instance had type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 793
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Methods called on delegated instance must have compatible return types with the mock."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When calling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on mock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return type should be: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but was: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/4 p0, 0x3

    const-string p1, "Check that the instance passed to delegatesTo() is of the correct type or contains compatible methods"

    aput-object p1, v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(delegate instance had type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 690
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 693
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 563
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "extraInterfaces() accepts only interfaces."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You passed following type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " which is not an interface."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesCannotContainMockedType(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 570
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "extraInterfaces() does not accept the same type as the mocked type."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You mocked following type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, "and you passed the same very interface to the extraInterfaces()"

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesDoesNotAcceptNullParameters()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 557
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "extraInterfaces() does not accept null parameters."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesRequiresAtLeastOneInterface()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 578
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "extraInterfaces() requires at least one interface."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 657
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate @InjectMocks field named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "You haven\'t provided the instance at field declaration so I tried to construct the instance."

    aput-object v2, v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "However the constructor or the initialization block threw an exception : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 p0, 0x3

    const-string v2, ""

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    const-string v4, "\n  "

    .line 841
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 843
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unnecessary stubbings detected in test class: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "Unnecessary stubbings detected."

    .line 847
    :goto_1
    new-instance p1, Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Clean & maintainable test code requires zero unnecessary code."

    aput-object p0, v2, v1

    const/4 p0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Following stubbings are unnecessary (click to navigate to relevant line of code):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p0

    const/4 p0, 0x3

    const-string v0, "Please remove unnecessary stubbings or use \'silent\' option. More info: javadoc for UnnecessaryStubbingException class."

    aput-object v0, v2, p0

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static inOrderRequiresFamiliarMock()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 223
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InOrder can only verify mocks that were passed in during creation of InOrder."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "For example:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    InOrder inOrder = inOrder(mockOne);"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    inOrder.verify(mockOne).doStuff();"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 251
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid use of argument matchers inside additional matcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " !"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, ""

    const/4 v2, 0x2

    aput-object p0, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sub matchers expected, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " recorded:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const/4 p1, 0x5

    aput-object p0, v1, p1

    const/4 p1, 0x6

    const-string p2, "This exception may occur if matchers are combined with raw values:"

    aput-object p2, v1, p1

    const/4 p1, 0x7

    const-string p2, "    //incorrect:"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "    someMethod(AdditionalMatchers.and(isNotNull(), \"raw String\");"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    const-string p2, "When using matchers, all arguments have to be provided by matchers."

    aput-object p2, v1, p1

    const/16 p1, 0xa

    const-string p2, "For example:"

    aput-object p2, v1, p1

    const/16 p1, 0xb

    const-string p2, "    //correct:"

    aput-object p2, v1, p1

    const/16 p1, 0xc

    const-string p2, "    someMethod(AdditionalMatchers.and(isNotNull(), eq(\"raw String\"));"

    aput-object p2, v1, p1

    const/16 p1, 0xd

    aput-object p0, v1, p1

    const/16 p1, 0xe

    const-string p2, "For more info see javadoc for Matchers and AdditionalMatchers classes."

    aput-object p2, v1, p1

    const/16 p1, 0xf

    aput-object p0, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static incorrectUseOfApi()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 84
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Incorrect use of API detected here:"

    aput-object v3, v1, v2

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ""

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v3, 0x3

    const-string v4, "You probably stored a reference to OngoingStubbing returned by when() and called stubbing methods like thenReturn() on this reference more than once."

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "Examples of correct usage:"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "    when(mock.isOk()).thenReturn(true).thenReturn(false).thenThrow(exception);"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "    when(mock.isOk()).thenReturn(true, false).thenThrow(exception);"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 722
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Invalid argument index for the current invocation of method : "

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ""

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Last parameter wanted"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wanted parameter at position "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    const-string p1, "The index need to be a positive number that indicates a valid position of the argument in the invocation."

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, "However it is possible to use the -1 value to indicates that the last argument should be returned."

    aput-object p1, v1, p0

    const/4 p0, 0x6

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidArgumentRangeAtIdentityAnswerCreationTime()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 714
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Invalid argument index."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "The index need to be a positive number that indicates the position of the argument to return."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "However it is possible to use the -1 value to indicates that the last argument should be"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "returned."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidUseOfMatchers(ILjava/util/List;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 232
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Invalid use of argument matchers!"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " matchers expected, "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " recorded:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, ""

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/4 p1, 0x3

    const-string v2, "This exception may occur if matchers are combined with raw values:"

    aput-object v2, v1, p1

    const/4 p1, 0x4

    const-string v2, "    //incorrect:"

    aput-object v2, v1, p1

    const/4 p1, 0x5

    const-string v2, "    someMethod(anyObject(), \"raw String\");"

    aput-object v2, v1, p1

    const/4 p1, 0x6

    const-string v2, "When using matchers, all arguments have to be provided by matchers."

    aput-object v2, v1, p1

    const/4 p1, 0x7

    const-string v2, "For example:"

    aput-object v2, v1, p1

    const/16 p1, 0x8

    const-string v2, "    //correct:"

    aput-object v2, v1, p1

    const/16 p1, 0x9

    const-string v2, "    someMethod(anyObject(), eq(\"String by matcher\"));"

    aput-object v2, v1, p1

    const/16 p1, 0xa

    aput-object p0, v1, p1

    const/16 p1, 0xb

    const-string v2, "For more info see javadoc for Matchers class."

    aput-object v2, v1, p1

    const/16 p1, 0xc

    aput-object p0, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invocationListenerDoesNotAcceptNullParameters()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 666
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "invocationListeners() does not accept null parameters"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 674
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The invocation listener with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threw an exception : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static invocationListenersRequiresAtLeastOneListener()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 670
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "invocationListeners() requires at least one listener"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static locationsOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/matchers/LocalizedMatcher;

    .line 290
    invoke-virtual {v1}, Lorg/mockito/internal/matchers/LocalizedMatcher;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static misplacedArgumentMatcher(Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 507
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Misplaced or misused argument matcher detected here:"

    aput-object v3, v1, v2

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, ""

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    const-string v3, "You cannot use argument matchers outside of verification or stubbing."

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Examples of correct usage of argument matchers:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "    when(mock.get(anyInt())).thenReturn(null);"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "    doThrow(new RuntimeException()).when(mock).someVoidMethod(anyObject());"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "    verify(mock).someMethod(contains(\"foo\"))"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object p0, v1, v2

    const/16 v2, 0x9

    const-string v3, "This message may appear after an NullPointerException if the last matcher is returning an object "

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "like any() but the stubbed method signature expect a primitive argument, in this case,"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "use primitive alternatives."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "    when(mock.get(any())); // bad use, will raise NPE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "    when(mock.get(anyInt())); // correct usage use"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aput-object p0, v1, v2

    const/16 v2, 0xf

    const-string v3, "Also, this error might show up because you use argument matchers with methods that cannot be mocked."

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Following methods *cannot* be stubbed/verified: final/private/equals()/hashCode()."

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Mocking methods declared on non-public parent classes is not supported."

    aput-object v3, v1, v2

    const/16 v2, 0x12

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static missingMethodInvocation()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 97
    new-instance v0, Lorg/mockito/exceptions/misusing/MissingMethodInvocationException;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "when() requires an argument which has to be \'a method call on a mock\'."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "For example:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    when(mock.getArticles()).thenReturn(articles);"

    aput-object v3, v1, v2

    const-string v2, ""

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v3, 0x4

    const-string v4, "Also, this error might show up because:"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "1. you stub either of: final/private/equals()/hashCode() methods."

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "   Those methods *cannot* be stubbed/verified."

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "   Mocking methods declared on non-public parent classes is not supported."

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "2. inside when() you don\'t call method on mock but on some other object."

    aput-object v4, v1, v3

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/MissingMethodInvocationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 697
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Mocked type must be the same as the type of your delegated instance."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mocked type must be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    const-string p1, "  //correct delegate:"

    aput-object p1, v1, p0

    const/4 p0, 0x3

    const-string p1, "  spy = mock( ->List.class<- , withSettings().delegatedInstance( ->new ArrayList()<- );"

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, "  //incorrect - types don\'t match:"

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, "  spy = mock( ->List.class<- , withSettings().delegatedInstance( ->new HashSet()<- );"

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 584
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Mocked type must be the same as the type of your spied instance."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mocked type must be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    const-string p1, "  //correct spying:"

    aput-object p1, v1, p0

    const/4 p0, 0x3

    const-string p1, "  spy = mock( ->ArrayList.class<- , withSettings().spiedInstance( ->new ArrayList()<- );"

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, "  //incorrect - types don\'t match:"

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, "  spy = mock( ->List.class<- , withSettings().spiedInstance( ->new ArrayList()<- );"

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mocksHaveToBePassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 167
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Method requires argument(s)!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Pass mocks that should be verified, e.g:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    verifyZeroInteractions(mockOne, mockTwo);"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mocksHaveToBePassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 214
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Method requires argument(s)!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Pass mocks that require verification in order."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "For example:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static moreThanOneAnnotationNotAllowed(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 614
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You cannot have more than one Mockito annotation on a field!\nThe field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has multiple Mockito annotations.\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "For info how to use annotations see examples in javadoc for MockitoAnnotations class."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 3

    .line 371
    new-instance v0, Lorg/mockito/exceptions/verification/NeverWantedButInvoked;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "Never wanted here:"

    aput-object v2, v1, p0

    new-instance p0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 p0, 0x3

    const-string v2, "But invoked here:"

    aput-object v2, v1, p0

    const/4 p0, 0x4

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, ""

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/NeverWantedButInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noArgumentValueWasCaptured()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 542
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No argument value was captured!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "You might have forgotten to use argument.capture() in verify()..."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "...or you used capture() in stubbing but stubbed method was not called."

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Be aware that it is recommended to use capture() only with verify()"

    aput-object v3, v1, v2

    const-string v2, ""

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v3, 0x5

    const-string v4, "Examples of correct argument capturing:"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "    ArgumentCaptor<Person> argument = ArgumentCaptor.forClass(Person.class);"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "    verify(mock).doSomething(argument.capture());"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "    assertEquals(\"John\", argument.getValue().getName());"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/exceptions/VerificationAwareInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 417
    new-instance v0, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;-><init>()V

    .line 418
    invoke-virtual {v0, p1}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;->print(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 420
    new-instance v0, Lorg/mockito/exceptions/verification/NoInteractionsWanted;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No interactions wanted here:"

    aput-object v3, v1, v2

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "But found this interaction on mock \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const/4 p0, 0x4

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/NoInteractionsWanted;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4

    .line 430
    new-instance v0, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No interactions wanted here:"

    aput-object v3, v1, v2

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "But found this interaction on mock \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedToVerify(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument passed to verify() is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and is not a mock!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "Make sure you place the parenthesis correctly!"

    aput-object v2, v1, p0

    const/4 p0, 0x2

    const-string v2, "See the examples of correct verifications:"

    aput-object v2, v1, p0

    const/4 p0, 0x3

    const-string v2, "    verify(mock).someMethod();"

    aput-object v2, v1, p0

    const/4 p0, 0x4

    const-string v2, "    verify(mock, times(10)).someMethod();"

    aput-object v2, v1, p0

    const/4 p0, 0x5

    const-string v2, "    verify(mock, atLeastOnce()).someMethod();"

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 177
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument(s) passed is not a mock!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Examples of correct verifications:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    verifyZeroInteractions(mockOne, mockTwo);"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 150
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument passed to when() is not a mock!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Example of correct stubbing:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    doThrow(new RuntimeException()).when(mock).someMethod();"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 196
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument(s) passed is not a mock!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Pass mocks that require verification in order."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "For example:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAnException()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 828
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exception type cannot be null."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "This may happen with doThrow(Class)|thenThrow(Class) family of methods if passing null parameter."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 138
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument passed to verify() should be a mock but is null!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Examples of correct verifications:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    verify(mock).someMethod();"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    verify(mock, times(10)).someMethod();"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "    verify(mock, atLeastOnce()).someMethod();"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "    not: verify(mock.someMethod());"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Also, if you use @Mock annotation don\'t miss initMocks()"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 187
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument(s) passed is null!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Examples of correct verifications:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    verifyZeroInteractions(mockOne, mockTwo);"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 158
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument passed to when() is null!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Example of correct stubbing:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    doThrow(new RuntimeException()).when(mock).someMethod();"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Also, if you use @Mock annotation don\'t miss initMocks()"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 205
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument(s) passed is null!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Pass mocks that require verification in order."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "For example:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onlyVoidMethodsCanBeSetToDoNothing()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 464
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Only void methods can doNothing()!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Example of correct use of doNothing():"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "    doNothing()."

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "    doThrow(new RuntimeException())"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "    .when(mock).someVoidMethod();"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Above means:"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "someVoidMethod() does nothing the 1st time but throws an exception the 2nd time is called"

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;
    .locals 6

    .line 736
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 737
    array-length v1, v0

    if-nez v1, :cond_0

    .line 738
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "the method has no arguments.\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 741
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the possible argument indexes for this method are :\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 742
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    const-string v4, "    ["

    .line 743
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_1

    const-string v4, "+] "

    .line 746
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  <- Vararg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "] "

    .line 748
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static potentialStubbingProblem(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "    "

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    .line 864
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n      "

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    .line 867
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 869
    new-instance p1, Lorg/mockito/exceptions/misusing/PotentialStubbingProblem;

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "Strict stubbing argument mismatch. Please check:"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - this invocation of \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' method:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const/4 p0, 0x4

    const-string v1, " - has following stubbing(s) with different arguments:"

    aput-object v1, v2, p0

    const/4 p0, 0x5

    aput-object v0, v2, p0

    const/4 p0, 0x6

    const-string v0, "Typically, stubbing argument mismatch indicates user mistake when writing tests."

    aput-object v0, v2, p0

    const/4 p0, 0x7

    const-string v0, "Mockito fails early so that you can debug potential problem easily."

    aput-object v0, v2, p0

    const/16 p0, 0x8

    const-string v0, "However, there are legit scenarios when this exception generates false negative signal:"

    aput-object v0, v2, p0

    const/16 p0, 0x9

    const-string v0, "  - stubbing the same method multiple times using \'given().will()\' or \'when().then()\' API"

    aput-object v0, v2, p0

    const/16 p0, 0xa

    const-string v0, "    Please use \'will().given()\' or \'doReturn().when()\' API for stubbing."

    aput-object v0, v2, p0

    const/16 p0, 0xb

    const-string v0, "  - stubbed method is intentionally invoked with different arguments by code under test"

    aput-object v0, v2, p0

    const/16 p0, 0xc

    const-string v0, "    Please use \'default\' or \'silent\' JUnit Rule."

    aput-object v0, v2, p0

    const/16 p0, 0xd

    const-string v0, "For more information see javadoc for PotentialStubbingProblem class."

    aput-object v0, v2, p0

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/misusing/PotentialStubbingProblem;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static redundantMockitoListener(Ljava/lang/String;)V
    .locals 4

    .line 887
    new-instance v0, Lorg/mockito/exceptions/misusing/RedundantListenerException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Problems adding Mockito listener."

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listener of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has already been added and not removed."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, "It indicates that previous listener was not removed according to the API."

    aput-object v2, v1, p0

    const/4 p0, 0x3

    const-string v2, "When you add a listener, don\'t forget to remove the listener afterwards:"

    aput-object v2, v1, p0

    const/4 p0, 0x4

    const-string v2, "  Mockito.framework().removeListener(myListener);"

    aput-object v2, v1, p0

    const/4 p0, 0x5

    const-string v2, "For more information, see the javadoc for RedundantListenerException class."

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/RedundantListenerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reportNoSubMatchersFound(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 279
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matchers found for additional matcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, ""

    aput-object v2, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;
    .locals 0

    .line 834
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p0

    return-object p0
.end method

.method public static serializableWontWorkForObjectsThatDontImplementSerializable(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 781
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You are using the setting \'withSettings().serializable()\' however the type you are trying to mock \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "do not implement Serializable AND do not have a no-arg constructor."

    aput-object v2, v1, p0

    const/4 p0, 0x2

    const-string v2, "This combination is requested, otherwise you will get an \'java.io.InvalidClassException\' when the mock will be serialized"

    aput-object v2, v1, p0

    const-string p0, ""

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const/4 v2, 0x4

    const-string v3, "Also note that as requested by the Java serialization specification, the whole hierarchy need to implements Serializable,"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "i.e. the top-most superclass has to implements Serializable."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 531
    new-instance v0, Lorg/mockito/exceptions/verification/SmartNullPointerException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "You have a NullPointerException here:"

    aput-object v3, v1, v2

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "because this method call was *not* stubbed correctly:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    aput-object p0, v1, p1

    const/4 p0, 0x5

    const-string p1, ""

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/SmartNullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static spyAndDelegateAreMutuallyExclusive()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 708
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Settings should not define a spy instance and a delegated instance at the same time."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static stubPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 272
    new-instance v0, Lorg/mockito/exceptions/misusing/CannotVerifyStubOnlyMock;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument passed to verify() is a stubOnly() mock, not a full blown mock!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "If you intend to verify invocations on a mock, don\'t use stubOnly() in its MockSettings."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/CannotVerifyStubOnlyMock;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tooLittleActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 0

    .line 403
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;

    move-result-object p0

    .line 405
    new-instance p1, Lorg/mockito/exceptions/verification/TooLittleActualInvocations;

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/TooLittleActualInvocations;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static tooLittleActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 2

    .line 409
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->createTooLittleInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;

    move-result-object p0

    .line 411
    new-instance p1, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification in order failure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-static {p2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 0

    .line 354
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/exceptions/Reporter;->createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;

    move-result-object p0

    .line 355
    new-instance p1, Lorg/mockito/exceptions/verification/TooManyActualInvocations;

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/TooManyActualInvocations;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 1

    .line 382
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/exceptions/Reporter;->createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/Location;)Ljava/lang/String;

    move-result-object p0

    .line 383
    new-instance p1, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Verification in order failure:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-static {p2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static unfinishedMockingSession()V
    .locals 4

    .line 897
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unfinished mocking session detected."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Previous MockitoSession was not concluded with \'finishMocking()\'."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "For examples of correct usage see javadoc for MockitoSession class."

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unfinishedStubbing(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 66
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedStubbingException;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unfinished stubbing detected here:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, ""

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    const-string v3, "E.g. thenReturn() may be missing."

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Examples of correct stubbing:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "    when(mock.isOk()).thenReturn(true);"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "    when(mock.isOk()).thenThrow(exception);"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "    doThrow(exception).when(mock).someVoidMethod();"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Hints:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, " 1. missing thenReturn()"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, " 2. you are trying to stub a final method, which is not supported"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, " 3: you are stubbing the behaviour of another mock inside before \'thenReturn\' instruction if completed"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/UnfinishedStubbingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static unfinishedVerificationException(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 112
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedVerificationException;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Missing method call for verify(mock) here:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, ""

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    const-string v3, "Example of correct verification:"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "    verify(mock).doSomething()"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const/4 v2, 0x6

    const-string v3, "Also, this error might show up because you verify either of: final/private/equals()/hashCode() methods."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Those methods *cannot* be stubbed/verified."

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Mocking methods declared on non-public parent classes is not supported."

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/UnfinishedVerificationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static unncessaryStubbingException(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 856
    invoke-static {v0, p0}, Lorg/mockito/internal/exceptions/Reporter;->formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    move-result-object p0

    throw p0
.end method

.method public static unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 620
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This combination of annotations is not permitted on a single field:\n@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and @"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 813
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mocks instantiated with constructor cannot be combined with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " serialization mode."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedAtMostX(II)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4

    .line 503
    new-instance v0, Lorg/mockito/exceptions/base/MockitoAssertionError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wanted at most "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 1

    .line 308
    new-instance v0, Lorg/mockito/exceptions/verification/WantedButNotInvoked;

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/WantedButNotInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "+",
            "Lorg/mockito/invocation/DescribedInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 313
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Actually, there were zero interactions with this mock.\n"

    goto :goto_1

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHowever, there "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lorg/mockito/internal/reporting/Pluralizer;->were_exactly_x_interactions(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with this mock:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/DescribedInvocation;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    :goto_1
    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;

    move-result-object p0

    .line 328
    new-instance v0, Lorg/mockito/exceptions/verification/WantedButNotInvoked;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/WantedButNotInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4

    .line 341
    new-instance v0, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Verification in order failure"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Wanted but not invoked:"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    new-instance p0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const/4 p0, 0x4

    const-string v2, "Wanted anywhere AFTER following interaction:"

    aput-object v2, v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    const/4 p1, 0x6

    aput-object p0, v1, p1

    const/4 p0, 0x7

    const-string p1, ""

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 755
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The argument of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot be returned because the following "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method should return the type \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, ""

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const/4 p2, 0x4

    const-string v2, "The reason for this error can be :"

    aput-object v2, v1, p2

    const/4 p2, 0x5

    const-string v2, "1. The wanted argument position is incorrect."

    aput-object v2, v1, p2

    const/4 p2, 0x6

    const-string v2, "2. The answer is used on the wrong interaction."

    aput-object v2, v1, p2

    const/4 p2, 0x7

    aput-object p1, v1, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position of the wanted argument is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x8

    aput-object p0, v1, p2

    const/16 p0, 0x9

    const-string p2, "***"

    aput-object p2, v1, p0

    const/16 p0, 0xa

    const-string p2, "However if you\'re still unsure why you\'re getting above error read on."

    aput-object p2, v1, p0

    const/16 p0, 0xb

    const-string p2, "Due to the nature of the syntax above problem might occur because:"

    aput-object p2, v1, p0

    const/16 p0, 0xc

    const-string p2, "1. This exception *might* occur in wrongly written multi-threaded tests."

    aput-object p2, v1, p0

    const/16 p0, 0xd

    const-string p2, "   Please refer to Mockito FAQ on limitations of concurrency testing."

    aput-object p2, v1, p0

    const/16 p0, 0xe

    const-string p2, "2. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    aput-object p2, v1, p0

    const/16 p0, 0xf

    const-string p2, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    aput-object p2, v1, p0

    const/16 p0, 0x10

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 476
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be returned by "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() should return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    const-string p1, "***"

    aput-object p1, v1, p0

    const/4 p0, 0x3

    const-string p1, "If you\'re unsure why you\'re getting above error read on."

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, "Due to the nature of the syntax above problem might occur because:"

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, "1. This exception *might* occur in wrongly written multi-threaded tests."

    aput-object p1, v1, p0

    const/4 p0, 0x6

    const-string p1, "   Please refer to Mockito FAQ on limitations of concurrency testing."

    aput-object p1, v1, p0

    const/4 p0, 0x7

    const-string p1, "2. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    aput-object p1, v1, p0

    const/16 p0, 0x8

    const-string p1, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    aput-object p1, v1, p0

    const/16 p0, 0x9

    const-string p1, ""

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 491
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Default answer returned a result with the wrong type:"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be returned by "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "()"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "() should return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, ""

    const/4 p2, 0x3

    aput-object p1, v1, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The default answer of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->safelyGetMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " that was configured on the mock is probably incorrectly implemented."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x4

    aput-object p0, v1, p2

    const/4 p0, 0x5

    aput-object p1, v1, p0

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
