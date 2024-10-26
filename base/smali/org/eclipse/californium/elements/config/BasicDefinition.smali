.class public abstract Lorg/eclipse/californium/elements/config/BasicDefinition;
.super Lorg/eclipse/californium/elements/config/DocumentedDefinition;
.source "BasicDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
