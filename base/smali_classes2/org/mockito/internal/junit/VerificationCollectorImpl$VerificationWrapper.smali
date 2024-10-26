.class Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;
.super Ljava/lang/Object;
.source "VerificationCollectorImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/junit/VerificationCollectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerificationWrapper"
.end annotation


# instance fields
.field private final delegate:Lorg/mockito/verification/VerificationMode;

.field final synthetic this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;


# direct methods
.method private constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/junit/VerificationCollectorImpl$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;-><init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;)V

    return-void
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 98
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not fail in this mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoAssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->access$100(Lorg/mockito/internal/junit/VerificationCollectorImpl;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
