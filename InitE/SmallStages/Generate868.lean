import Tools.GenSmallStages
import InitE.SmallStages.Oracles868
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 868 InitE.WordStages.source868.2.1 InitE.WordStages.source868.2.2 InitE.SmallStages.Oracles868.oracle868
