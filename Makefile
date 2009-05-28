
include $(TOP)/make/system.mk

SUBDIRS = \
	accept \
	base \
	client \
	compositor \
	connection \
	dataStream \
	image \
	loader \
	netperf \
	node \
	openmp \
	pipeperf \
	session \
	frustum

TARGETS = subdirs

include $(TOP)/make/rules.mk

image: compositor
