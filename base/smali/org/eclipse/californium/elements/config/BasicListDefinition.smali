.class public abstract Lorg/eclipse/californium/elements/config/BasicListDefinition;
.super Lorg/eclipse/californium/elements/config/BasicDefinition;
.source "BasicListDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/californium/elements/config/BasicDefinition<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    const-class v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/californium/elements/config/BasicDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 30
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/BasicListDefinition;->checkValue(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkValue(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 56
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 58
    :catch_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :catch_1
    :cond_0
    :goto_0
    return-object p1
.end method
