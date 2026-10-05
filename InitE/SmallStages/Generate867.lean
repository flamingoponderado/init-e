import Tools.GenSmallStages
import InitE.SmallStages.Oracles867
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 867 InitE.WordStages.source867.2.1 InitE.WordStages.source867.2.2 InitE.SmallStages.Oracles867.oracle867
