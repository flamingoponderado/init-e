import InitE.BackendStages.Metadata.Data433
import InitE.BackendStages.Filtered433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis433_eq : ffiLines Filtered433.lines = localFfis433 := by
  with_unfolding_all rfl
theorem ffiStep433 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis433) : LabToTarget.findFfiNames (Filtered433 :: rest) = suffixFfis433 := by
  rw [findFfiNames_section, localFfis433_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep433
end InitE.BackendStages.Metadata
