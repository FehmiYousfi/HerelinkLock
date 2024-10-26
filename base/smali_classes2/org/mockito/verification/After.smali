.class public Lorg/mockito/verification/After;
.super Lorg/mockito/internal/verification/VerificationWrapper;
.source "After.java"

# interfaces
.implements Lorg/mockito/verification/VerificationAfterDelay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mockito/internal/verification/VerificationWrapper<",
        "Lorg/mockito/internal/verification/VerificationOverTimeImpl;",
        ">;",
        "Lorg/mockito/verification/VerificationAfterDelay;"
    }
.end annotation


# direct methods
.method constructor <init>(JJLorg/mockito/verification/VerificationMode;)V
    .locals 8

    .line 30
    new-instance v7, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    invoke-direct {p0, v7}, Lorg/mockito/verification/After;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    return-void
.end method

.method public constructor <init>(JLorg/mockito/verification/VerificationMode;)V
    .locals 6

    const-wide/16 v1, 0xa

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/mockito/verification/After;-><init>(JJLorg/mockito/verification/VerificationMode;)V

    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/mockito/internal/verification/VerificationWrapper;-><init>(Lorg/mockito/verification/VerificationMode;)V

    return-void
.end method


# virtual methods
.method protected copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 2

    .line 39
    new-instance v0, Lorg/mockito/verification/After;

    iget-object v1, p0, Lorg/mockito/verification/After;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    check-cast v1, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    invoke-virtual {v1, p1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->copyWithVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mockito/verification/After;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method
