.class public final enum Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;
.super Ljava/lang/Enum;
.source "TypeAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInstrumentedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType$Differentiating;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    .line 49
    sget-object v2, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->$VALUES:[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;
    .locals 1

    .line 49
    const-class v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;
    .locals 1

    .line 49
    sget-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->$VALUES:[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$ForInstrumentedType;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 4

    .line 58
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V

    .line 62
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    const/4 v1, 0x1

    .line 59
    invoke-static {v0, p3, v1, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZLjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    .line 63
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofSuperClass(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    :cond_0
    const/4 v0, 0x0

    .line 68
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    add-int/lit8 v3, v0, 0x1

    .line 69
    invoke-static {p1, p3, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofInterfaceType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object p1

    invoke-interface {v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move v0, v3

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 74
    invoke-interface {p1, v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    goto :goto_1

    :cond_2
    return-void
.end method
