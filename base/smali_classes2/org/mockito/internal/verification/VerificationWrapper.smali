.class public abstract Lorg/mockito/internal/verification/VerificationWrapper;
.super Ljava/lang/Object;
.source "VerificationWrapper.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WrapperType::",
        "Lorg/mockito/verification/VerificationMode;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/verification/VerificationMode;"
    }
.end annotation


# instance fields
.field protected final wrappedVerification:Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWrapperType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/verification/VerificationMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWrapperType;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/mockito/internal/verification/VerificationWrapper;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    return-void
.end method


# virtual methods
.method public atLeast(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 37
    invoke-static {p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeast(I)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public atLeastOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 33
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeastOnce()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 41
    invoke-static {p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method protected abstract copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
.end method

.method public never()Lorg/mockito/verification/VerificationMode;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public only()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 45
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->only()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public times(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 25
    invoke-static {p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationWrapper;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    return-void
.end method
