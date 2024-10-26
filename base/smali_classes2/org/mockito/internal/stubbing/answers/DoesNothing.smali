.class public Lorg/mockito/internal/stubbing/answers/DoesNothing;
.super Ljava/lang/Object;
.source "DoesNothing.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Lorg/mockito/stubbing/ValidableAnswer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/stubbing/ValidableAnswer;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Lorg/mockito/internal/stubbing/answers/DoesNothing;

.field private static final serialVersionUID:J = 0x432e432ecc0b1b30L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/mockito/internal/stubbing/answers/DoesNothing;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/answers/DoesNothing;-><init>()V

    sput-object v0, Lorg/mockito/internal/stubbing/answers/DoesNothing;->SINGLETON:Lorg/mockito/internal/stubbing/answers/DoesNothing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesNothing()Lorg/mockito/internal/stubbing/answers/DoesNothing;
    .locals 1

    .line 24
    sget-object v0, Lorg/mockito/internal/stubbing/answers/DoesNothing;->SINGLETON:Lorg/mockito/internal/stubbing/answers/DoesNothing;

    return-object v0
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public validateFor(Lorg/mockito/invocation/InvocationOnMock;)V
    .locals 1

    .line 34
    new-instance v0, Lorg/mockito/internal/stubbing/answers/InvocationInfo;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;-><init>(Lorg/mockito/invocation/InvocationOnMock;)V

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/answers/InvocationInfo;->isVoid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->onlyVoidMethodsCanBeSetToDoNothing()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method
