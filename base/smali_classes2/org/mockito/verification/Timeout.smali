.class public Lorg/mockito/verification/Timeout;
.super Lorg/mockito/internal/verification/VerificationWrapper;
.source "Timeout.java"

# interfaces
.implements Lorg/mockito/verification/VerificationWithTimeout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mockito/internal/verification/VerificationWrapper<",
        "Lorg/mockito/internal/verification/VerificationOverTimeImpl;",
        ">;",
        "Lorg/mockito/verification/VerificationWithTimeout;"
    }
.end annotation


# direct methods
.method constructor <init>(JJLorg/mockito/verification/VerificationMode;)V
    .locals 8

    .line 36
    new-instance v7, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    const/4 v6, 0x1

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    invoke-direct {p0, v7}, Lorg/mockito/verification/Timeout;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    return-void
.end method

.method public constructor <init>(JLorg/mockito/verification/VerificationMode;)V
    .locals 6

    const-wide/16 v1, 0xa

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 29
    invoke-direct/range {v0 .. v5}, Lorg/mockito/verification/Timeout;-><init>(JJLorg/mockito/verification/VerificationMode;)V

    return-void
.end method

.method constructor <init>(JLorg/mockito/verification/VerificationMode;Lorg/mockito/internal/util/Timer;)V
    .locals 7

    .line 43
    new-instance v6, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    const/4 v4, 0x1

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JLorg/mockito/verification/VerificationMode;ZLorg/mockito/internal/util/Timer;)V

    invoke-direct {p0, v6}, Lorg/mockito/verification/Timeout;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/mockito/internal/verification/VerificationWrapper;-><init>(Lorg/mockito/verification/VerificationMode;)V

    return-void
.end method


# virtual methods
.method public atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 56
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->atMostAndNeverShouldNotBeUsedWithTimeout()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p1

    throw p1
.end method

.method protected copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 2

    .line 52
    new-instance v0, Lorg/mockito/verification/Timeout;

    iget-object v1, p0, Lorg/mockito/verification/Timeout;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    check-cast v1, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    invoke-virtual {v1, p1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->copyWithVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/verification/Timeout;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public never()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 60
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->atMostAndNeverShouldNotBeUsedWithTimeout()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method
