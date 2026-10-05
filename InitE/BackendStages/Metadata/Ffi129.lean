import InitE.BackendStages.Metadata.Data129
import InitE.BackendStages.Filtered129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis129_eq : ffiLines Filtered129.lines = localFfis129 := by
  with_unfolding_all rfl
theorem ffiStep129 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis129) : LabToTarget.findFfiNames (Filtered129 :: rest) = suffixFfis129 := by
  rw [findFfiNames_section, localFfis129_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep129
end InitE.BackendStages.Metadata
