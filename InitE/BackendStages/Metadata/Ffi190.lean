import InitE.BackendStages.Metadata.Data190
import InitE.BackendStages.Filtered190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis190_eq : ffiLines Filtered190.lines = localFfis190 := by
  with_unfolding_all rfl
theorem ffiStep190 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis190) : LabToTarget.findFfiNames (Filtered190 :: rest) = suffixFfis190 := by
  rw [findFfiNames_section, localFfis190_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep190
end InitE.BackendStages.Metadata
