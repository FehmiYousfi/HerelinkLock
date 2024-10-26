.class public Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;
.super Ljava/lang/Object;
.source "ReflectionEquals.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final excludeFields:[Ljava/lang/String;

.field private final wanted:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->wanted:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->excludeFields:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->wanted:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->excludeFields:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refEq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;->wanted:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
