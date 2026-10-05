import InitE.BackendStages.Metadata.Data142
import InitE.BackendStages.Filtered142
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis142_eq : ffiLines Filtered142.lines = localFfis142 := by
  with_unfolding_all rfl
theorem ffiStep142 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis142) : LabToTarget.findFfiNames (Filtered142 :: rest) = suffixFfis142 := by
  rw [findFfiNames_section, localFfis142_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep142
end InitE.BackendStages.Metadata
