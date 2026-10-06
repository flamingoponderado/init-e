import InitE.BackendStages.Metadata.Data66
import InitE.BackendStages.Filtered66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis66_eq : ffiLines Filtered66.lines = localFfis66 := by
  with_unfolding_all rfl
theorem ffiStep66 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis66) : LabToTarget.findFfiNames (Filtered66 :: rest) = suffixFfis66 := by
  rw [findFfiNames_section, localFfis66_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep66
end InitE.BackendStages.Metadata
