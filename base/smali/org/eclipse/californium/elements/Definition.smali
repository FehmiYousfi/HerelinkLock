.class public Lorg/eclipse/californium/elements/Definition;
.super Ljava/lang/Object;
.source "Definition.java"


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
.field private final key:Ljava/lang/String;

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lorg/eclipse/californium/elements/Definitions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iput-object p1, p0, Lorg/eclipse/californium/elements/Definition;->key:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/eclipse/californium/elements/Definition;->valueType:Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p3, p0}, Lorg/eclipse/californium/elements/Definitions;->add(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definitions;

    :cond_0
    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Value Type must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definition;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definition;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/elements/Definition;->key:Ljava/lang/String;

    return-object v0
.end method
