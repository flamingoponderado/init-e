import InitE.BackendStages.Metadata.Data402
import InitE.BackendStages.Filtered402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis402_eq : ffiLines Filtered402.lines = localFfis402 := by
  with_unfolding_all rfl
theorem ffiStep402 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis402) : LabToTarget.findFfiNames (Filtered402 :: rest) = suffixFfis402 := by
  rw [findFfiNames_section, localFfis402_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep402
end InitE.BackendStages.Metadata
