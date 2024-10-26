.class public Lorg/mockito/junit/MockitoJUnitRunner$Strict;
.super Lorg/mockito/junit/MockitoJUnitRunner;
.source "MockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/junit/MockitoJUnitRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strict"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/mockito/internal/runners/StrictRunner;

    new-instance v1, Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {v1}, Lorg/mockito/internal/runners/RunnerFactory;-><init>()V

    invoke-virtual {v1, p1}, Lorg/mockito/internal/runners/RunnerFactory;->createStrict(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/internal/runners/StrictRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/mockito/junit/MockitoJUnitRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;)V

    return-void
.end method
