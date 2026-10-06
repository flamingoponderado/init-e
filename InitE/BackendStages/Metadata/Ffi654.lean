import InitE.BackendStages.Metadata.Data654
import InitE.BackendStages.Filtered654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis654_eq : ffiLines Filtered654.lines = localFfis654 := by
  with_unfolding_all rfl
theorem ffiStep654 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis654) : LabToTarget.findFfiNames (Filtered654 :: rest) = suffixFfis654 := by
  rw [findFfiNames_section, localFfis654_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep654
end InitE.BackendStages.Metadata
