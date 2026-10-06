import InitE.BackendStages.Metadata.Data201
import InitE.BackendStages.Filtered201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis201_eq : ffiLines Filtered201.lines = localFfis201 := by
  with_unfolding_all rfl
theorem ffiStep201 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis201) : LabToTarget.findFfiNames (Filtered201 :: rest) = suffixFfis201 := by
  rw [findFfiNames_section, localFfis201_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep201
end InitE.BackendStages.Metadata
