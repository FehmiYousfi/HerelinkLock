.class public final enum Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;
.super Ljava/lang/Enum;
.source "FieldAttributeAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
.implements Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInstrumentedField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    new-instance v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;->INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    .line 112
    sget-object v2, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;->INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;->$VALUES:[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;
    .locals 1

    .line 112
    const-class v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;
    .locals 1

    .line 112
    sget-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;->$VALUES:[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$ForInstrumentedField;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2

    .line 121
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnField;

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnField;-><init>(Lnet/bytebuddy/jar/asm/FieldVisitor;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V

    .line 122
    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-static {v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofFieldType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 123
    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 124
    invoke-interface {p1, v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .locals 0

    return-object p0
.end method
