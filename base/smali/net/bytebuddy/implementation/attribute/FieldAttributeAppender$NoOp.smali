.class public final enum Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;
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
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    .line 30
    sget-object v2, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;
    .locals 1

    .line 30
    const-class v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;
    .locals 1

    .line 30
    sget-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 0

    return-void
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .locals 0

    return-object p0
.end method
