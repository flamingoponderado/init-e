import InitE.BackendStages.Metadata.Data621
import InitE.BackendStages.Filtered621
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis621_eq : ffiLines Filtered621.lines = localFfis621 := by
  with_unfolding_all rfl
theorem ffiStep621 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis621) : LabToTarget.findFfiNames (Filtered621 :: rest) = suffixFfis621 := by
  rw [findFfiNames_section, localFfis621_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep621
end InitE.BackendStages.Metadata
