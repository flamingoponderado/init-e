import InitE.BackendStages.Metadata.Data444
import InitE.BackendStages.Filtered444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis444_eq : ffiLines Filtered444.lines = localFfis444 := by
  with_unfolding_all rfl
theorem ffiStep444 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis444) : LabToTarget.findFfiNames (Filtered444 :: rest) = suffixFfis444 := by
  rw [findFfiNames_section, localFfis444_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep444
end InitE.BackendStages.Metadata
