.class public Lorg/mockito/internal/matchers/InstanceOf$VarArgAware;
.super Lorg/mockito/internal/matchers/InstanceOf;
.source "InstanceOf.java"

# interfaces
.implements Lorg/mockito/internal/matchers/VarargMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/matchers/InstanceOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarArgAware"
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

    .line 41
    invoke-direct {p0, p1}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
