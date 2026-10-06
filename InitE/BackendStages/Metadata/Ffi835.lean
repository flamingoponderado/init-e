import InitE.BackendStages.Metadata.Data835
import InitE.BackendStages.Filtered835
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis835_eq : ffiLines Filtered835.lines = localFfis835 := by
  with_unfolding_all rfl
theorem ffiStep835 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis835) : LabToTarget.findFfiNames (Filtered835 :: rest) = suffixFfis835 := by
  rw [findFfiNames_section, localFfis835_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep835
end InitE.BackendStages.Metadata
