.class public Lorg/eclipse/californium/elements/config/IntegerDefinition;
.super Lorg/eclipse/californium/elements/config/BasicDefinition;
.source "IntegerDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/elements/config/BasicDefinition<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final minimumValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/californium/elements/config/BasicDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 41
    iput-object v1, p0, Lorg/eclipse/californium/elements/config/IntegerDefinition;->minimumValue:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 53
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/californium/elements/config/BasicDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lorg/eclipse/californium/elements/config/IntegerDefinition;->minimumValue:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 68
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/californium/elements/config/BasicDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 69
    iput-object p4, p0, Lorg/eclipse/californium/elements/config/IntegerDefinition;->minimumValue:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public checkValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/IntegerDefinition;->minimumValue:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/californium/elements/config/IntegerDefinition;->minimumValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lorg/eclipse/californium/elements/config/ValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must be not less than "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/elements/config/IntegerDefinition;->minimumValue:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/californium/elements/config/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/IntegerDefinition;->checkValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "Integer"

    return-object v0
.end method

.method protected parseValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/IntegerDefinition;->parseValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public writeValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/IntegerDefinition;->writeValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method