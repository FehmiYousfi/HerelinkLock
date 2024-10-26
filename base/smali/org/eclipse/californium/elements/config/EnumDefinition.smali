.class public Lorg/eclipse/californium/elements/config/EnumDefinition;
.super Lorg/eclipse/californium/elements/config/BasicDefinition;
.source "EnumDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "*>;>",
        "Lorg/eclipse/californium/elements/config/BasicDefinition<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final valuesDocumentation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;[Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;[TE;)V"
        }
    .end annotation

    .line 90
    invoke-static {p4}, Lorg/eclipse/californium/elements/config/DefinitionUtils;->getClass([Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/californium/elements/config/BasicDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    .line 94
    array-length p1, p4

    if-eqz p1, :cond_3

    .line 97
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p4, p2

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Enum set must not contain null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    iput-object p3, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->defaultValue:Ljava/lang/Enum;

    .line 103
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->values:Ljava/util/List;

    .line 104
    iget-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->values:Ljava/util/List;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/eclipse/californium/elements/config/DefinitionUtils;->toNames(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->valuesDocumentation:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 106
    invoke-virtual {p0, p3}, Lorg/eclipse/californium/elements/config/EnumDefinition;->isAssignableFrom(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Enum set must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Enum set must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TE;)V"
        }
    .end annotation

    .line 48
    invoke-static {p3}, Lorg/eclipse/californium/elements/config/DefinitionUtils;->getClass([Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/californium/elements/config/BasicDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    if-eqz p3, :cond_6

    .line 52
    array-length p1, p3

    if-eqz p1, :cond_5

    .line 55
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p3, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Enum set must not contain null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    aget-object p1, p3, p2

    const/4 v0, 0x1

    move v2, v0

    .line 62
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 63
    aget-object v3, p3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 69
    iput-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->defaultValue:Ljava/lang/Enum;

    .line 70
    array-length p1, p3

    invoke-static {p3, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->values:Ljava/util/List;

    goto :goto_3

    .line 72
    :cond_4
    iput-object v1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->defaultValue:Ljava/lang/Enum;

    .line 73
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->values:Ljava/util/List;

    .line 75
    :goto_3
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/config/DefinitionUtils;->toNames(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->valuesDocumentation:Ljava/lang/String;

    return-void

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Enum set must not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Enum set must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->defaultValue:Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/EnumDefinition;->getDefaultValue()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentation()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/eclipse/californium/elements/config/BasicDefinition;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->valuesDocumentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAssignableFrom(Ljava/lang/Object;)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/config/BasicDefinition;->isAssignableFrom(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->valuesDocumentation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseValue(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->values:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/config/DefinitionUtils;->toValue(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Lorg/eclipse/californium/elements/config/ValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/elements/config/EnumDefinition;->valuesDocumentation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/californium/elements/config/ValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/EnumDefinition;->parseValue(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public writeValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/EnumDefinition;->writeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
