import InitE.BackendStages.Metadata.Data726
import InitE.BackendStages.Filtered726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis726_eq : ffiLines Filtered726.lines = localFfis726 := by
  with_unfolding_all rfl
theorem ffiStep726 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis726) : LabToTarget.findFfiNames (Filtered726 :: rest) = suffixFfis726 := by
  rw [findFfiNames_section, localFfis726_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep726
end InitE.BackendStages.Metadata
