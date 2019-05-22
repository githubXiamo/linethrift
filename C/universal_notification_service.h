/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#ifndef UNIVERSAL_NOTIFICATION_SERVICE_H
#define UNIVERSAL_NOTIFICATION_SERVICE_H

#include <thrift/c_glib/processor/thrift_dispatch_processor.h>

#include "line_types.h"

/* UniversalNotificationService service interface */
typedef struct _UniversalNotificationServiceIf UniversalNotificationServiceIf;  /* dummy object */

struct _UniversalNotificationServiceIfInterface
{
  GTypeInterface parent;

  gboolean (*notify) (UniversalNotificationServiceIf *iface, const GlobalEvent * event, UniversalNotificationServiceException ** e, GError **error);
};
typedef struct _UniversalNotificationServiceIfInterface UniversalNotificationServiceIfInterface;

GType universal_notification_service_if_get_type (void);
#define TYPE_UNIVERSAL_NOTIFICATION_SERVICE_IF (universal_notification_service_if_get_type())
#define UNIVERSAL_NOTIFICATION_SERVICE_IF(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_IF, UniversalNotificationServiceIf))
#define IS_UNIVERSAL_NOTIFICATION_SERVICE_IF(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_IF))
#define UNIVERSAL_NOTIFICATION_SERVICE_IF_GET_INTERFACE(inst) (G_TYPE_INSTANCE_GET_INTERFACE ((inst), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_IF, UniversalNotificationServiceIfInterface))

gboolean universal_notification_service_if_notify (UniversalNotificationServiceIf *iface, const GlobalEvent * event, UniversalNotificationServiceException ** e, GError **error);

/* UniversalNotificationService service client */
struct _UniversalNotificationServiceClient
{
  GObject parent;

  ThriftProtocol *input_protocol;
  ThriftProtocol *output_protocol;
};
typedef struct _UniversalNotificationServiceClient UniversalNotificationServiceClient;

struct _UniversalNotificationServiceClientClass
{
  GObjectClass parent;
};
typedef struct _UniversalNotificationServiceClientClass UniversalNotificationServiceClientClass;

GType universal_notification_service_client_get_type (void);
#define TYPE_UNIVERSAL_NOTIFICATION_SERVICE_CLIENT (universal_notification_service_client_get_type())
#define UNIVERSAL_NOTIFICATION_SERVICE_CLIENT(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_CLIENT, UniversalNotificationServiceClient))
#define UNIVERSAL_NOTIFICATION_SERVICE_CLIENT_CLASS(c) (G_TYPE_CHECK_CLASS_CAST ((c), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_CLIENT, UniversalNotificationServiceClientClass))
#define UNIVERSAL_NOTIFICATION_SERVICE_IS_CLIENT(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_CLIENT))
#define UNIVERSAL_NOTIFICATION_SERVICE_IS_CLIENT_CLASS(c) (G_TYPE_CHECK_CLASS_TYPE ((c), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_CLIENT))
#define UNIVERSAL_NOTIFICATION_SERVICE_CLIENT_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_CLIENT, UniversalNotificationServiceClientClass))

gboolean universal_notification_service_client_notify (UniversalNotificationServiceIf * iface, const GlobalEvent * event, UniversalNotificationServiceException ** e, GError ** error);
gboolean universal_notification_service_client_send_notify (UniversalNotificationServiceIf * iface, const GlobalEvent * event, GError ** error);
gboolean universal_notification_service_client_recv_notify (UniversalNotificationServiceIf * iface, UniversalNotificationServiceException ** e, GError ** error);
void universal_notification_service_client_set_property (GObject *object, guint property_id, const GValue *value, GParamSpec *pspec);
void universal_notification_service_client_get_property (GObject *object, guint property_id, GValue *value, GParamSpec *pspec);

/* UniversalNotificationService handler (abstract base class) */
struct _UniversalNotificationServiceHandler
{
  GObject parent;
};
typedef struct _UniversalNotificationServiceHandler UniversalNotificationServiceHandler;

struct _UniversalNotificationServiceHandlerClass
{
  GObjectClass parent;

  gboolean (*notify) (UniversalNotificationServiceIf *iface, const GlobalEvent * event, UniversalNotificationServiceException ** e, GError **error);
};
typedef struct _UniversalNotificationServiceHandlerClass UniversalNotificationServiceHandlerClass;

GType universal_notification_service_handler_get_type (void);
#define TYPE_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER (universal_notification_service_handler_get_type())
#define UNIVERSAL_NOTIFICATION_SERVICE_HANDLER(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER, UniversalNotificationServiceHandler))
#define IS_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER))
#define UNIVERSAL_NOTIFICATION_SERVICE_HANDLER_CLASS(c) (G_TYPE_CHECK_CLASS_CAST ((c), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER, UniversalNotificationServiceHandlerClass))
#define IS_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER_CLASS(c) (G_TYPE_CHECK_CLASS_TYPE ((c), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER))
#define UNIVERSAL_NOTIFICATION_SERVICE_HANDLER_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_HANDLER, UniversalNotificationServiceHandlerClass))

gboolean universal_notification_service_handler_notify (UniversalNotificationServiceIf *iface, const GlobalEvent * event, UniversalNotificationServiceException ** e, GError **error);

/* UniversalNotificationService processor */
struct _UniversalNotificationServiceProcessor
{
  ThriftDispatchProcessor parent;

  /* protected */
  UniversalNotificationServiceHandler *handler;
  GHashTable *process_map;
};
typedef struct _UniversalNotificationServiceProcessor UniversalNotificationServiceProcessor;

struct _UniversalNotificationServiceProcessorClass
{
  ThriftDispatchProcessorClass parent;

  /* protected */
  gboolean (*dispatch_call) (ThriftDispatchProcessor *processor,
                             ThriftProtocol *in,
                             ThriftProtocol *out,
                             gchar *fname,
                             gint32 seqid,
                             GError **error);
};
typedef struct _UniversalNotificationServiceProcessorClass UniversalNotificationServiceProcessorClass;

GType universal_notification_service_processor_get_type (void);
#define TYPE_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR (universal_notification_service_processor_get_type())
#define UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR, UniversalNotificationServiceProcessor))
#define IS_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR))
#define UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR_CLASS(c) (G_TYPE_CHECK_CLASS_CAST ((c), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR, UniversalNotificationServiceProcessorClass))
#define IS_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR_CLASS(c) (G_TYPE_CHECK_CLASS_TYPE ((c), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR))
#define UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_UNIVERSAL_NOTIFICATION_SERVICE_PROCESSOR, UniversalNotificationServiceProcessorClass))

#endif /* UNIVERSAL_NOTIFICATION_SERVICE_H */