.class public abstract Lorg/eclipse/californium/elements/config/DocumentedDefinition;
.super Lorg/eclipse/californium/elements/Definition;
.source "DocumentedDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/californium/elements/Definition<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final documentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
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

    .line 55
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/elements/Definition;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    iput-object p2, p0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->documentation:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected checkRawValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getDocumentation()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->documentation:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAssignableFrom(Ljava/lang/Object;)Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/elements/config/ValueException;
        }
    .end annotation
.end method

.method public readValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->useTrim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/californium/elements/config/ValueException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    aput-object p1, v2, v1

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Key \'%s\': value \'%s\' %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/ValueException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Key \'%s\': %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    aput-object p1, v2, v1

    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getTypeName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Key \'%s\': value \'%s\' is no %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 133
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Key \'%s\': textual value must not be empty!"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Key \'%s\': textual value must not be null!"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected useTrim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->writeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract writeValue(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
