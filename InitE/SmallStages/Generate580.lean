import Tools.GenSmallStages
import InitE.SmallStages.Oracles580
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 580 InitE.WordStages.source580.2.1 InitE.WordStages.source580.2.2 InitE.SmallStages.Oracles580.oracle580
