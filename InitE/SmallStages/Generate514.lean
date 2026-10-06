import Tools.GenSmallStages
import InitE.SmallStages.Oracles514
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 514 InitE.WordStages.source514.2.1 InitE.WordStages.source514.2.2 InitE.SmallStages.Oracles514.oracle514
