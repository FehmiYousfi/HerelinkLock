.class public Lorg/mockito/internal/stubbing/StubberImpl;
.super Ljava/lang/Object;
.source "StubberImpl.java"

# interfaces
.implements Lorg/mockito/stubbing/Stubber;


# instance fields
.field private final answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/stubbing/Answer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    return-void
.end method

.method private varargs doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;
    .locals 5

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v0, Lorg/mockito/internal/stubbing/answers/Returns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 56
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 57
    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v4, Lorg/mockito/internal/stubbing/answers/Returns;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/Returns;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private varargs doThrowClasses([Ljava/lang/Class;)Lorg/mockito/internal/stubbing/StubberImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/internal/stubbing/StubberImpl;"
        }
    .end annotation

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 86
    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v4, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/ThrowsExceptionClass;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v1, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    invoke-static {}, Lorg/mockito/internal/stubbing/answers/DoesNothing;->doesNothing()Lorg/mockito/internal/stubbing/answers/DoesNothing;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 43
    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 48
    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    invoke-direct {p1, p2}, Lorg/mockito/internal/stubbing/StubberImpl;->doReturnValues([Ljava/lang/Object;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    return-object p1
.end method

.method public doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 76
    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doThrowClasses([Ljava/lang/Class;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mockito/stubbing/Stubber;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 81
    invoke-direct {p0, v0}, Lorg/mockito/internal/stubbing/StubberImpl;->doThrowClasses([Ljava/lang/Class;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    invoke-direct {p1, p2}, Lorg/mockito/internal/stubbing/StubberImpl;->doThrowClasses([Ljava/lang/Class;)Lorg/mockito/internal/stubbing/StubberImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 5

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v0, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 68
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 69
    iget-object v3, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    new-instance v4, Lorg/mockito/internal/stubbing/answers/ThrowsException;

    invoke-direct {v4, v2}, Lorg/mockito/internal/stubbing/answers/ThrowsException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public when(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 33
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/stubbing/StubberImpl;->answers:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/mockito/internal/InternalMockHandler;->setAnswersForStubbing(Ljava/util/List;)V

    return-object p1

    .line 34
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1

    .line 30
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
