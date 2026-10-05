import InitE.BackendStages.Metadata.Data628
import InitE.BackendStages.Filtered628
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis628_eq : ffiLines Filtered628.lines = localFfis628 := by
  with_unfolding_all rfl
theorem ffiStep628 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis628) : LabToTarget.findFfiNames (Filtered628 :: rest) = suffixFfis628 := by
  rw [findFfiNames_section, localFfis628_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep628
end InitE.BackendStages.Metadata
