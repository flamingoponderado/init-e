import InitE.BackendStages.Metadata.Data301
import InitE.BackendStages.Filtered301
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis301_eq : ffiLines Filtered301.lines = localFfis301 := by
  with_unfolding_all rfl
theorem ffiStep301 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis301) : LabToTarget.findFfiNames (Filtered301 :: rest) = suffixFfis301 := by
  rw [findFfiNames_section, localFfis301_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep301
end InitE.BackendStages.Metadata
