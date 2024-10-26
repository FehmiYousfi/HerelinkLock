.class public Lorg/mockito/internal/debugging/Localized;
.super Ljava/lang/Object;
.source "Localized.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final location:Lorg/mockito/invocation/Location;

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/debugging/Localized;->object:Ljava/lang/Object;

    .line 17
    new-instance p1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/debugging/Localized;->location:Lorg/mockito/invocation/Location;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/mockito/internal/debugging/Localized;->location:Lorg/mockito/invocation/Location;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/mockito/internal/debugging/Localized;->object:Ljava/lang/Object;

    return-object v0
.end method
