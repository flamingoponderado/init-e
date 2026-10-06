import InitE.BackendStages.Metadata.Data434
import InitE.BackendStages.Filtered434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis434_eq : ffiLines Filtered434.lines = localFfis434 := by
  with_unfolding_all rfl
theorem ffiStep434 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis434) : LabToTarget.findFfiNames (Filtered434 :: rest) = suffixFfis434 := by
  rw [findFfiNames_section, localFfis434_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep434
end InitE.BackendStages.Metadata
