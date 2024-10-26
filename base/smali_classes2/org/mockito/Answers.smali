.class public final enum Lorg/mockito/Answers;
.super Ljava/lang/Enum;
.source "Answers.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/Answers;",
        ">;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/Answers;

.field public static final enum CALLS_REAL_METHODS:Lorg/mockito/Answers;

.field public static final enum RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

.field public static final enum RETURNS_DEFAULTS:Lorg/mockito/Answers;

.field public static final enum RETURNS_MOCKS:Lorg/mockito/Answers;

.field public static final enum RETURNS_SELF:Lorg/mockito/Answers;

.field public static final enum RETURNS_SMART_NULLS:Lorg/mockito/Answers;


# instance fields
.field private final implementation:Lorg/mockito/stubbing/Answer;
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
    .locals 9

    .line 35
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;-><init>()V

    const/4 v2, 0x0

    const-string v3, "RETURNS_DEFAULTS"

    invoke-direct {v0, v3, v2, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->RETURNS_DEFAULTS:Lorg/mockito/Answers;

    .line 44
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;-><init>()V

    const/4 v3, 0x1

    const-string v4, "RETURNS_SMART_NULLS"

    invoke-direct {v0, v4, v3, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->RETURNS_SMART_NULLS:Lorg/mockito/Answers;

    .line 53
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;-><init>()V

    const/4 v4, 0x2

    const-string v5, "RETURNS_MOCKS"

    invoke-direct {v0, v5, v4, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->RETURNS_MOCKS:Lorg/mockito/Answers;

    .line 63
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;-><init>()V

    const/4 v5, 0x3

    const-string v6, "RETURNS_DEEP_STUBS"

    invoke-direct {v0, v6, v5, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

    .line 72
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    const/4 v6, 0x4

    const-string v7, "CALLS_REAL_METHODS"

    invoke-direct {v0, v7, v6, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->CALLS_REAL_METHODS:Lorg/mockito/Answers;

    .line 81
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;-><init>()V

    const/4 v7, 0x5

    const-string v8, "RETURNS_SELF"

    invoke-direct {v0, v8, v7, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->RETURNS_SELF:Lorg/mockito/Answers;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/mockito/Answers;

    .line 27
    sget-object v1, Lorg/mockito/Answers;->RETURNS_DEFAULTS:Lorg/mockito/Answers;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mockito/Answers;->RETURNS_SMART_NULLS:Lorg/mockito/Answers;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mockito/Answers;->RETURNS_MOCKS:Lorg/mockito/Answers;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mockito/Answers;->RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

    aput-object v1, v0, v5

    sget-object v1, Lorg/mockito/Answers;->CALLS_REAL_METHODS:Lorg/mockito/Answers;

    aput-object v1, v0, v6

    sget-object v1, Lorg/mockito/Answers;->RETURNS_SELF:Lorg/mockito/Answers;

    aput-object v1, v0, v7

    sput-object v0, Lorg/mockito/Answers;->$VALUES:[Lorg/mockito/Answers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lorg/mockito/Answers;->implementation:Lorg/mockito/stubbing/Answer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/Answers;
    .locals 1

    .line 27
    const-class v0, Lorg/mockito/Answers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/Answers;

    return-object p0
.end method

.method public static values()[Lorg/mockito/Answers;
    .locals 1

    .line 27
    sget-object v0, Lorg/mockito/Answers;->$VALUES:[Lorg/mockito/Answers;

    invoke-virtual {v0}, [Lorg/mockito/Answers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/Answers;

    return-object v0
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/mockito/Answers;->implementation:Lorg/mockito/stubbing/Answer;

    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get()Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
