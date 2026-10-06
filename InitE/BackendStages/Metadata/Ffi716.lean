import InitE.BackendStages.Metadata.Data716
import InitE.BackendStages.Filtered716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis716_eq : ffiLines Filtered716.lines = localFfis716 := by
  with_unfolding_all rfl
theorem ffiStep716 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis716) : LabToTarget.findFfiNames (Filtered716 :: rest) = suffixFfis716 := by
  rw [findFfiNames_section, localFfis716_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep716
end InitE.BackendStages.Metadata
