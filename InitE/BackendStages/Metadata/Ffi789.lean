import InitE.BackendStages.Metadata.Data789
import InitE.BackendStages.Filtered789
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis789_eq : ffiLines Filtered789.lines = localFfis789 := by
  with_unfolding_all rfl
theorem ffiStep789 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis789) : LabToTarget.findFfiNames (Filtered789 :: rest) = suffixFfis789 := by
  rw [findFfiNames_section, localFfis789_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep789
end InitE.BackendStages.Metadata
