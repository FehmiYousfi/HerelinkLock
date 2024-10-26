.class public Lorg/mockito/junit/MockitoJUnitRunner$Silent;
.super Lorg/mockito/junit/MockitoJUnitRunner;
.source "MockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/junit/MockitoJUnitRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Silent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
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

    .line 107
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {v0}, Lorg/mockito/internal/runners/RunnerFactory;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mockito/junit/MockitoJUnitRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;)V

    return-void
.end method
