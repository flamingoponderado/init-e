import InitE.BackendStages.Metadata.Data194
import InitE.BackendStages.Filtered194
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis194_eq : ffiLines Filtered194.lines = localFfis194 := by
  with_unfolding_all rfl
theorem ffiStep194 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis194) : LabToTarget.findFfiNames (Filtered194 :: rest) = suffixFfis194 := by
  rw [findFfiNames_section, localFfis194_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep194
end InitE.BackendStages.Metadata
