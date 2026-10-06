import InitE.BackendStages.Metadata.Data534
import InitE.BackendStages.Filtered534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis534_eq : ffiLines Filtered534.lines = localFfis534 := by
  with_unfolding_all rfl
theorem ffiStep534 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis534) : LabToTarget.findFfiNames (Filtered534 :: rest) = suffixFfis534 := by
  rw [findFfiNames_section, localFfis534_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep534
end InitE.BackendStages.Metadata
