.class public Lorg/mockito/internal/matchers/LocalizedMatcher;
.super Ljava/lang/Object;
.source "LocalizedMatcher.java"


# instance fields
.field private final location:Lorg/mockito/invocation/Location;

.field private final matcher:Lorg/mockito/ArgumentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/ArgumentMatcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/ArgumentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/matchers/LocalizedMatcher;->matcher:Lorg/mockito/ArgumentMatcher;

    .line 19
    new-instance p1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/matchers/LocalizedMatcher;->location:Lorg/mockito/invocation/Location;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/mockito/internal/matchers/LocalizedMatcher;->location:Lorg/mockito/invocation/Location;

    return-object v0
.end method

.method public getMatcher()Lorg/mockito/ArgumentMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/mockito/internal/matchers/LocalizedMatcher;->matcher:Lorg/mockito/ArgumentMatcher;

    return-object v0
.end method
