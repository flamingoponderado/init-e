import InitE.BackendStages.Metadata.Data717
import InitE.BackendStages.Filtered717
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis717_eq : ffiLines Filtered717.lines = localFfis717 := by
  with_unfolding_all rfl
theorem ffiStep717 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis717) : LabToTarget.findFfiNames (Filtered717 :: rest) = suffixFfis717 := by
  rw [findFfiNames_section, localFfis717_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep717
end InitE.BackendStages.Metadata
