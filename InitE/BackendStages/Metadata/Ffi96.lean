import InitE.BackendStages.Metadata.Data96
import InitE.BackendStages.Filtered96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis96_eq : ffiLines Filtered96.lines = localFfis96 := by
  with_unfolding_all rfl
theorem ffiStep96 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis96) : LabToTarget.findFfiNames (Filtered96 :: rest) = suffixFfis96 := by
  rw [findFfiNames_section, localFfis96_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep96
end InitE.BackendStages.Metadata
