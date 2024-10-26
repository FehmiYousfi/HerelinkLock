.class public Lorg/mockito/runners/MockitoJUnitRunner$Strict;
.super Lorg/mockito/runners/MockitoJUnitRunner;
.source "MockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/runners/MockitoJUnitRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strict"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
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

    .line 42
    invoke-direct {p0, p1}, Lorg/mockito/runners/MockitoJUnitRunner;-><init>(Ljava/lang/Class;)V

    return-void
.end method
