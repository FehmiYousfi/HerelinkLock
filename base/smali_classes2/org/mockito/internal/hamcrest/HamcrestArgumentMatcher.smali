.class public Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;
.super Ljava/lang/Object;
.source "HamcrestArgumentMatcher.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
