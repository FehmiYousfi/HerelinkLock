.class public Lorg/mockito/Mockito;
.super Lorg/mockito/ArgumentMatchers;
.source "Mockito.java"


# static fields
.field public static final CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

.field public static final RETURNS_DEEP_STUBS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_MOCKS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_SELF:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURNS_SMART_NULLS:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1382
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    sput-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    .line 1394
    sget-object v0, Lorg/mockito/Answers;->RETURNS_DEFAULTS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;

    .line 1426
    sget-object v0, Lorg/mockito/Answers;->RETURNS_SMART_NULLS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_SMART_NULLS:Lorg/mockito/stubbing/Answer;

    .line 1439
    sget-object v0, Lorg/mockito/Answers;->RETURNS_MOCKS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_MOCKS:Lorg/mockito/stubbing/Answer;

    .line 1526
    sget-object v0, Lorg/mockito/Answers;->RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_DEEP_STUBS:Lorg/mockito/stubbing/Answer;

    .line 1560
    sget-object v0, Lorg/mockito/Answers;->CALLS_REAL_METHODS:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    .line 1631
    sget-object v0, Lorg/mockito/Answers;->RETURNS_SELF:Lorg/mockito/Answers;

    sput-object v0, Lorg/mockito/Mockito;->RETURNS_SELF:Lorg/mockito/stubbing/Answer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lorg/mockito/ArgumentMatchers;-><init>()V

    return-void
.end method

.method public static after(J)Lorg/mockito/verification/VerificationAfterDelay;
    .locals 2

    .line 2652
    new-instance v0, Lorg/mockito/verification/After;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/mockito/verification/After;-><init>(JLorg/mockito/verification/VerificationMode;)V

    return-object v0
.end method

.method public static atLeast(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 2520
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeast(I)Lorg/mockito/verification/VerificationMode;

    move-result-object p0

    return-object p0
.end method

.method public static atLeastOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 2504
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeastOnce()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 2536
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object p0

    return-object p0
.end method

.method public static calls(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 2553
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->calls(I)Lorg/mockito/internal/verification/Calls;

    move-result-object p0

    return-object p0
.end method

.method public static varargs clearInvocations([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 2015
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->clearInvocations([Ljava/lang/Object;)V

    return-void
.end method

.method static debug()Lorg/mockito/MockitoDebugger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2756
    new-instance v0, Lorg/mockito/internal/debugging/MockitoDebuggerImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/MockitoDebuggerImpl;-><init>()V

    return-object v0
.end method

.method public static description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 1

    const/4 v0, 0x1

    .line 2748
    invoke-static {v0}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/verification/VerificationMode;->description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p0

    return-object p0
.end method

.method public static doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2208
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    return-object p0
.end method

.method public static doCallRealMethod()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2182
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doCallRealMethod()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static doNothing()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2250
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/stubbing/Stubber;->doNothing()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public static doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2300
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    return-object p0
.end method

.method public static varargs doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2354
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mockito/stubbing/Stubber;->doReturn(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    return-object p0
.end method

.method public static doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 1
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

    .line 2120
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    return-object p0
.end method

.method public static varargs doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;
    .locals 1
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

    .line 2146
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mockito/stubbing/Stubber;->doThrow(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    return-object p0
.end method

.method public static varargs doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 2098
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->stubber()Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/stubbing/Stubber;->doThrow([Ljava/lang/Throwable;)Lorg/mockito/stubbing/Stubber;

    move-result-object p0

    return-object p0
.end method

.method public static framework()Lorg/mockito/MockitoFramework;
    .locals 1
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2766
    new-instance v0, Lorg/mockito/internal/framework/DefaultMockitoFramework;

    invoke-direct {v0}, Lorg/mockito/internal/framework/DefaultMockitoFramework;-><init>()V

    return-object v0
.end method

.method public static varargs ignoreStubs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 2452
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->ignoreStubs([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;
    .locals 1

    .line 2385
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;

    move-result-object p0

    return-object p0
.end method

.method public static mock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1642
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mock(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1661
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->name(Ljava/lang/String;)Lorg/mockito/MockSettings;

    move-result-object p1

    sget-object v0, Lorg/mockito/Mockito;->RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;

    invoke-interface {p1, v0}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")TT;"
        }
    .end annotation

    .line 1729
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0, p1}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mock(Ljava/lang/Class;Lorg/mockito/stubbing/Answer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/stubbing/Answer;",
            ")TT;"
        }
    .end annotation

    .line 1702
    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mockito/Mockito;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;
    .locals 1

    .line 1679
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static mockitoSession()Lorg/mockito/session/MockitoSessionBuilder;
    .locals 1
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 2779
    new-instance v0, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;

    invoke-direct {v0}, Lorg/mockito/internal/session/DefaultMockitoSessionBuilder;-><init>()V

    return-object v0
.end method

.method public static never()Lorg/mockito/verification/VerificationMode;
    .locals 1

    const/4 v0, 0x0

    .line 2489
    invoke-static {v0}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static only()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 2573
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->only()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static varargs reset([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 2000
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->reset([Ljava/lang/Object;)V

    return-void
.end method

.method public static spy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 1846
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/mockito/MockSettings;->useConstructor([Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object v1

    sget-object v2, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    invoke-interface {v1, v2}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static spy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1812
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lorg/mockito/Mockito;->withSettings()Lorg/mockito/MockSettings;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/mockito/MockSettings;->spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;

    move-result-object p0

    sget-object v2, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    invoke-interface {p0, v2}, Lorg/mockito/MockSettings;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/MockitoCore;->mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static timeout(J)Lorg/mockito/verification/VerificationWithTimeout;
    .locals 2

    .line 2612
    new-instance v0, Lorg/mockito/verification/Timeout;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/mockito/verification/Timeout;-><init>(JLorg/mockito/verification/VerificationMode;)V

    return-object v0
.end method

.method public static times(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 2468
    invoke-static {p0}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object p0

    return-object p0
.end method

.method public static validateMockitoUsage()V
    .locals 1

    .line 2701
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0}, Lorg/mockito/internal/MockitoCore;->validateMockitoUsage()V

    return-void
.end method

.method public static verify(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1944
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 1970
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0, p1}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs verifyNoMoreInteractions([Ljava/lang/Object;)V
    .locals 1

    .line 2060
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoMoreInteractions([Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs verifyZeroInteractions([Ljava/lang/Object;)V
    .locals 1

    .line 2079
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoMoreInteractions([Ljava/lang/Object;)V

    return-void
.end method

.method public static when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 1913
    sget-object v0, Lorg/mockito/Mockito;->MOCKITO_CORE:Lorg/mockito/internal/MockitoCore;

    invoke-virtual {v0, p0}, Lorg/mockito/internal/MockitoCore;->when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object p0

    return-object p0
.end method

.method public static withSettings()Lorg/mockito/MockSettings;
    .locals 2

    .line 2735
    new-instance v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-direct {v0}, Lorg/mockito/internal/creation/MockSettingsImpl;-><init>()V

    sget-object v1, Lorg/mockito/Mockito;->RETURNS_DEFAULTS:Lorg/mockito/stubbing/Answer;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method
