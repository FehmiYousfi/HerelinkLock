.class public Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;
.super Ljava/lang/Object;
.source "ByteBuddy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ByteBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EnumerationImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$InitializationAppender;,
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$ValuesMethodAppender;
    }
.end annotation


# static fields
.field protected static final CLONE_METHOD_NAME:Ljava/lang/String; = "clone"

.field private static final ENUM_FIELD_MODIFIERS:I = 0x19

.field private static final ENUM_VALUES:Ljava/lang/String; = "$VALUES"

.field protected static final ENUM_VALUES_METHOD_NAME:Ljava/lang/String; = "values"

.field protected static final ENUM_VALUE_OF_METHOD_NAME:Ljava/lang/String; = "valueOf"


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    .line 1142
    new-instance v0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$ValuesMethodAppender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$ValuesMethodAppender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1084
    instance-of p1, p1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1084
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1084
    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 5

    .line 1128
    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1129
    new-instance v2, Lnet/bytebuddy/description/field/FieldDescription$Token;

    const/16 v3, 0x4019

    sget-object v4, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1131
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1129
    invoke-interface {p1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    goto :goto_0

    .line 1133
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    const/16 v1, 0x1019

    sget-object v2, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1136
    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    const-string v3, "$VALUES"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1134
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$InitializationAppender;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$InitializationAppender;-><init>(Ljava/util/List;)V

    .line 1137
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method
