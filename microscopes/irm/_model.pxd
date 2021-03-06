# cython imports
from libcpp.vector cimport vector
from libcpp.set cimport set
from libc.stddef cimport size_t
from libcpp cimport bool as cbool

from microscopes._shared_ptr_h cimport shared_ptr
from microscopes._models_h cimport model as component_model
from microscopes.common._typedefs_h cimport \
    hyperparam_bag_t, suffstats_bag_t
from microscopes.common.relation._dataview cimport \
    abstract_dataview
from microscopes.common.relation._dataview_h cimport \
    dataview as c_dataview
from microscopes.common._entity_state_h cimport \
    entity_based_state_object as c_entity_based_state_object
from microscopes.common._entity_state cimport \
    entity_based_state_object
from microscopes.common._rng cimport rng
from microscopes.irm._model_h cimport \
    state_max4 as c_state, \
    model_max4 as c_model, \
    initialize as c_initialize, \
    deserialize as c_deserialize
from microscopes.irm.definition cimport model_definition

cdef class state:
    cdef shared_ptr[c_state] _thisptr
    cdef public model_definition _defn
